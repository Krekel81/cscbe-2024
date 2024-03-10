using System;
using System.Windows.Forms;

namespace learning_on_the_job
{
	internal static class Program
	{
		[STAThread]
		private static void Main()
		{
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(defaultValue: false);
			Application.Run(new Form1());
		}
	}
}
