using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using learning_on_the_job.Properties;

namespace learning_on_the_job
{
	public class Form1 : Form
	{
		private static class Attempts
		{
			public static int counter = 1;

			public static int max = 10;
		}

		private IContainer components;

		private Button button1;

		private Label label1;

		private MaskedTextBox maskedTextBox1;

		private Label label2;

		[DllImport("cscbe.dll")]
		public static extern IntPtr encrypt_decrypt(IntPtr data, int len, bool encrypt);

		[DllImport("cscbe.dll")]
		public static extern void free_data(IntPtr ptr, int len);

		public byte[] EncryptDecrypt(byte[] data, bool encrypt)
		{
			IntPtr intPtr = Marshal.AllocHGlobal(data.Length);
			Marshal.Copy(data, 0, intPtr, data.Length);
			IntPtr intPtr2 = encrypt_decrypt(intPtr, data.Length, encrypt);
			byte[] array = new byte[data.Length];
			Marshal.Copy(intPtr2, array, 0, data.Length);
			free_data(intPtr2, data.Length);
			Marshal.FreeHGlobal(intPtr);
			return array;
		}

		public Form1()
		{
			InitializeComponent();
		}

		private void Form1_Load(object sender, EventArgs e)
		{
		}

		private void button1_Click(object sender, EventArgs e)
		{
			if (Attempts.counter > Attempts.max)
			{
				MessageBox.Show("You have reached the maximum number of attempts");
				return;
			}
			if (Attempts.counter == 1)
			{
				byte[] bytes = EncryptDecrypt(Encoding.ASCII.GetBytes("wXvPijFyiNOj/uCif6zKI59PKItgsh57KHiQLM04WaYio+6kxG8YstH//Q+qfwne"), encrypt: false);
				MessageBox.Show("Here is your flag: " + Encoding.ASCII.GetString(bytes));
			}
			string text = "this is not the flag";
			Random random = new Random();
			int num = random.Next(1, 6);
			for (int i = 0; i < num; i++)
			{
				int num2 = random.Next(0, text.Length);
				text = string.Concat(str1: ((char)random.Next(32, 126)).ToString(), str0: text.Substring(0, num2), str2: text.Substring(num2 + 1));
			}
			label2.Text = "CSC{" + text + "}";
			maskedTextBox1.Visible = true;
			maskedTextBox1.Text = "Attempts: " + Attempts.counter + " of out " + Attempts.max + ", you are " + (Attempts.max + 1 - Attempts.counter) + " attempt(s) away from getting the flag";
			Attempts.counter++;
		}

		private void textBox1_TextChanged(object sender, EventArgs e)
		{
		}

		private void label1_Click(object sender, EventArgs e)
		{
		}

		private void label2_Click(object sender, EventArgs e)
		{
		}

		private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
		{
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && components != null)
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		private void InitializeComponent()
		{
			button1 = new System.Windows.Forms.Button();
			label1 = new System.Windows.Forms.Label();
			maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
			label2 = new System.Windows.Forms.Label();
			SuspendLayout();
			button1.Location = new System.Drawing.Point(323, 351);
			button1.Name = "button1";
			button1.Size = new System.Drawing.Size(165, 41);
			button1.TabIndex = 0;
			button1.Text = "Generate key";
			button1.UseVisualStyleBackColor = true;
			button1.Click += new System.EventHandler(button1_Click);
			label1.AutoSize = true;
			label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25f, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, 0);
			label1.Location = new System.Drawing.Point(139, 81);
			label1.Name = "label1";
			label1.Size = new System.Drawing.Size(585, 39);
			label1.TabIndex = 1;
			label1.Text = "Easy flag generator for the CSCBE";
			label1.Click += new System.EventHandler(label1_Click);
			maskedTextBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
			maskedTextBox1.Enabled = false;
			maskedTextBox1.Location = new System.Drawing.Point(175, 272);
			maskedTextBox1.Name = "maskedTextBox1";
			maskedTextBox1.ReadOnly = true;
			maskedTextBox1.Size = new System.Drawing.Size(467, 20);
			maskedTextBox1.TabIndex = 2;
			maskedTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			maskedTextBox1.Visible = false;
			maskedTextBox1.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(maskedTextBox1_MaskInputRejected);
			label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
			label2.Location = new System.Drawing.Point(247, 199);
			label2.Name = "label2";
			label2.Size = new System.Drawing.Size(322, 23);
			label2.TabIndex = 3;
			label2.Text = "CSC{}";
			label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
			label2.Click += new System.EventHandler(label2_Click);
			base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
			base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			base.ClientSize = new System.Drawing.Size(800, 450);
			base.Controls.Add(label2);
			base.Controls.Add(maskedTextBox1);
			base.Controls.Add(label1);
			base.Controls.Add(button1);
			DoubleBuffered = true;
			base.Name = "Form1";
			Text = "CSCBE FLAG KEYGEN";
			base.Load += new System.EventHandler(Form1_Load);
			ResumeLayout(false);
			PerformLayout();
		}
	}
}
