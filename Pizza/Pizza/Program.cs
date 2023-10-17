using System;
using System.Linq;

namespace Pizza
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] arguments = Console.ReadLine().Split();
            int k = int.Parse(arguments[0]);    // aantal pizza's
            int n = int.Parse(arguments[1]);    // aantal programmeurs
            int[] p = new int[k];
            for (int i = 0; i < k; i++)
            {
                p[i] = int.Parse(Console.ReadLine());
            }
            Console.WriteLine(MaxPortie(p, n));
        }

        static int MaxPortie(int[] p, int n)
        {
            int o = 0; int j = p.Max() + 1;
            while (j > o + 1)
            {
                int mid = (o + j) / 2;
                int pizzastukken = 0;
                for (int x = 1; x < p.Length; x++)
                {
                    pizzastukken += p[x] / mid;
                }
                if (pizzastukken < n)
                {
                    j = mid;
                }
                else o = mid;
            }
            return o;
        }
    }
}
