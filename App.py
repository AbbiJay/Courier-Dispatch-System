from tkinter import *
from tkinter import ttk
import random
import time
import datetime
from tkinter import messagebox
import mysql.connector


class Branch:
    def __init__(self, root):
        self.root = root
        self.root.title("Courier Management System")
        self.root.geometry("1540x800+0+0")

        self.branch_id = StringVar()
        self.branch_name = StringVar()
        self.branch_email = StringVar()
        self.branch_address = StringVar()

        lbltitle = Label(self.root, bd=20, relief=RIDGE, text="Courier Management System", fg="black",
                         bg="white", font=("times new roman", 20, "bold"), borderwidth=10, highlightthickness=12)
        lbltitle.pack(side=TOP, fill=X)

        # ************* DATA FRAME ***************
        Dataframe = Frame(self.root, bd=10, padx=10, relief=RIDGE)
        Dataframe.place(x=0, y=70, width=1530, height=400)

        DataFrameLeft = LabelFrame(Dataframe, bd=10, relief=RIDGE, padx=10, font=(
            "times new roman", 12, "bold"), text="Branch")
        DataFrameLeft.place(x=0, y=0, width=970, height=370)

        DataFrameRight = LabelFrame(Dataframe, bd=10, relief=RIDGE, padx=10, font=(
            "times new roman", 12, "bold"), text="Branch Entry")
        DataFrameRight.place(x=980, y=0, width=260, height=370)

        # ************* BUTTON FRAME ***************
        Buttonframe = Frame(self.root, bd=10, relief=RIDGE)
        Buttonframe.place(x=0, y=475, width=1530, height=50)

        # ************* DETAILS FRAME ***************
        Detailsframe = Frame(self.root, bd=10, relief=RIDGE)
        Detailsframe.place(x=0, y=532, width=1530, height=95)

        # ************* DATA FRAME LEFT ***************
        lblBranch_id = Label(DataFrameLeft, text="Branch ID:", font=(
            "times new roman", 12, "bold"), padx=2, pady=6)
        lblBranch_id.grid(row=0, column=0)

        txtBranch_id = Entry(DataFrameLeft, font=(
            "times new roman", 12, "bold"), textvariable=self.branch_id, width=35)
        txtBranch_id.grid(row=0, column=1)

        lblBranch_name = Label(DataFrameLeft, text="Branch Name:", font=(
            "times new roman", 12, "bold"), padx=2, pady=6)
        lblBranch_name.grid(row=1, column=0)

        txtBranch_name = Entry(DataFrameLeft, font=(
            "times new roman", 12, "bold"), textvariable=self.branch_name, width=35)
        txtBranch_name.grid(row=1, column=1)

        lblBranch_email = Label(DataFrameLeft, text="Branch Email:", font=(
            "times new roman", 12, "bold"), padx=2, pady=6)
        lblBranch_email.grid(row=2, column=0)

        txtBranch_email = Entry(DataFrameLeft, font=(
            "times new roman", 12, "bold"), textvariable=self.branch_email, width=35)
        txtBranch_email.grid(row=2, column=1)

        lblBranch_address = Label(DataFrameLeft, text="Branch Address:", font=(
            "times new roman", 12, "bold"), padx=2, pady=6)
        lblBranch_address.grid(row=3, column=0)

        txtBranch_address = Entry(DataFrameLeft, font=(
            "times new roman", 12, "bold"), textvariable=self.branch_address, width=35)
        txtBranch_address.grid(row=3, column=1)

        # ************* DATA FRAME RIGHT ***************
        self.txtBranch_id = Text(DataFrameRight, font=(
            "times new roman", 12, "bold"), width=27, height=17, padx=2, pady=2)
        self.txtBranch_id.grid(row=0, column=0)

        # ************* BUTTONS ***************
        btnBranch = Button(Buttonframe, text="Branch", font=(
            "times new roman", 12, "bold"), bg="white", fg="black", width=23)
        btnBranch.grid(row=0, column=0)

        btnBranchData = Button(Buttonframe, text="Branch Data", font=(
            "times new roman", 12, "bold"), bg="white", fg="black", width=23)
        btnBranchData.grid(row=0, column=1)

        btnBranchUpdate = Button(Buttonframe, text="Udpdate", font=(
            "times new roman", 12, "bold"), bg="white", fg="black", width=23)
        btnBranchUpdate.grid(row=0, column=2)

        btnBranchDelete = Button(Buttonframe, text="Delete", font=(
            "times new roman", 12, "bold"), fg="black", bg="white", width=23)
        btnBranchDelete.grid(row=0, column=3)

        btnBranchClear = Button(Buttonframe, text="Clear", font=(
            "times new roman", 12, "bold"), bg="white", fg="black", width=23)
        btnBranchClear.grid(row=0, column=4)

        btnBranchExit = Button(Buttonframe, text="Exit", font=(
            "times new roman", 12, "bold"), bg="white", fg="black", width=23)
        btnBranchExit.grid(row=0, column=5)

        # ************* TABLE ***************
        # ************* SCROLL BAR ***************
        scroll_x = ttk.Scrollbar(Detailsframe, orient=HORIZONTAL)
        scroll_y = ttk.Scrollbar(Detailsframe, orient=VERTICAL)
        self.branch_table = ttk.Treeview(Detailsframe, columns=("branch_id", "branch_name", "branch_email", "branch_address"), xscrollcommand=scroll_x.set, yscrollcommand=scroll_y.set)
        scroll_x.pack(side=BOTTOM,fill=X)
        scroll_y.pack(side=RIGHT,fill=Y)

        scroll_x.config(command=self.branch_table.xview)
        scroll_y.config(command=self.branch_table.yview)

        # scroll_x = ttk.Scrollbar(command=self.branch_table.xview)
        # scroll_y = ttk.Scrollbar(command=self.branch_table.yview)

        self.branch_table.heading("branch_id", text="Branch ID")
        self.branch_table.heading("branch_name", text="Branch Name")
        self.branch_table.heading("branch_email", text="Branch Email")
        self.branch_table.heading("branch_address", text="Branch Address")

        self.branch_table["show"] = "headings"

        self.branch_table.column("branch_id", width=30)
        self.branch_table.column("branch_name", width=30)
        self.branch_table.column("branch_email", width=30)
        self.branch_table.column("branch_address", width=30)

        self.branch_table.pack(fill=BOTH,expand=1)

    # ************* Functionality Declaration ***************
    def iBranchData(self):
        if self.branch_id.get() == "" or self.branch_name.get() == "" or self.branch_email.get() == "" or self.branch_address.get() == "":
            messagebox.showerror("Error", "All fields are required")
        else:
            conn = mysql.connector.connect(
                host="localhost", username="root", password="38849767", database="courier")
            my_cursor = conn.cursor()
            my_cursor.execute("insert into branch values(%s,%s,%s,%s)", (self.branch_id.get(
            ), self.branch_name.get(), self.branch_email.get(), self.branch_address.get()))
            conn.commit()
            conn.close()
            messagebox.showerror("Successfull", "Data saved")

if __name__ == "__main__":
    root = Tk()
    ob = Branch(root)
    root.mainloop()

