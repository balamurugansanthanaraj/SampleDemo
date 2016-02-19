using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleDemo
{
    class AccountAppService
    {
        public int MyProperty { get; set; }
        public int SecondProperty { get; set; }

        public void  Add(int a,int b)
        {
            if (a == 0 && b == 0) return;
            var c = a + b;
        }


    }
}
