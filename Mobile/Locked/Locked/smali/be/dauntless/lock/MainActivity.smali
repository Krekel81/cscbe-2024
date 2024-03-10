.class public Lbe/dauntless/lock/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 22
    sget v0, Lbe/dauntless/lock/R$id;->submitButton:I

    invoke-virtual {p0, v0}, Lbe/dauntless/lock/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    new-instance v1, Lbe/dauntless/lock/MainActivity$1;

    invoke-direct {v1, p0}, Lbe/dauntless/lock/MainActivity$1;-><init>(Lbe/dauntless/lock/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget p1, Lbe/dauntless/lock/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lbe/dauntless/lock/MainActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lbe/dauntless/lock/MainActivity;->init()V

    return-void
.end method
