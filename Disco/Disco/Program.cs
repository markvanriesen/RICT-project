using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;

namespace Disco
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            Dictionary<int, int> times = makeTimesDict(n);
            int[] sortedTimes = countingSort(times);
            int m = sortedTimes.Length;
            int[] drukte = new int[m];
            drukte[0] = times[sortedTimes[0]];
            int maxDrukte = drukte[0];
            for (int i = 1; i < m; i++)
            {
                drukte[i] = drukte[i - 1] + times[sortedTimes[i]];
                if (drukte[i] >= maxDrukte)
                {
                    maxDrukte = drukte[i];
                }
            }
            Console.WriteLine(maxDrukte);
            string s = "";
            for (int i = 0; i < m; i++)
            {
                if (drukte[i] == maxDrukte)
                {
                    if (i == 0)
                    {
                        s += "Van " + sortedTimes[i] + " ";
                    }
                    else if (drukte[i - 1] != maxDrukte)
                    {
                        s += "Van " + sortedTimes[i] + " ";
                    }
                    if (i != m - 1)
                    {
                        if (drukte[i + 1] != maxDrukte)
                        {
                            s += "tot " + sortedTimes[i + 1];
                            Console.WriteLine(s);
                            s = "";
                        }
                    }
                }
            }
        }

        static int[] countingSort(Dictionary<int, int> d)
        {
            int m = d.Keys.Max();
            int[] c = new int[m + 1];
            for (int i = 0; i < m; i++)
            {
                c[i] = 0;
            }
            foreach (KeyValuePair<int, int> i in d)
            {
                c[i.Key]++;
            }
            for (int i = 1; i <= m; i++)
            {
                c[i] += c[i - 1];
            }
            int[] sorted = new int[d.Count];
            for (int i = d.Count - 1; i >= 0; i--)
            {
                sorted[c[d.ElementAt(i).Key] - 1] = d.ElementAt(i).Key;
                c[d.ElementAt(i).Key]--;
            }
            return sorted;
        }

        static Dictionary<int, int> makeTimesDict(int n)
        {
            Dictionary<int, int> times = new Dictionary<int, int>();
            for (int i = 0; i < n; i++)
            {
                string[] guest = Console.ReadLine().Split();
                int arriveTime = int.Parse(guest[1]);
                int leaveTime = int.Parse(guest[2]);
                if (times.ContainsKey(arriveTime))
                {
                    times[arriveTime] += 1;
                }
                else
                {
                    times[arriveTime] = 1;
                }
                if (times.ContainsKey(leaveTime))
                {
                    times[leaveTime] -= 1;
                }
                else
                {
                    times[leaveTime] = -1;
                }
            }
            return times;
        }
    }
}
