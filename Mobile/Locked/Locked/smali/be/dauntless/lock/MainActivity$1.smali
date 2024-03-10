.class Lbe/dauntless/lock/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/dauntless/lock/MainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/dauntless/lock/MainActivity;


# direct methods
.method constructor <init>(Lbe/dauntless/lock/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lbe/dauntless/lock/MainActivity$1;->this$0:Lbe/dauntless/lock/MainActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lbe/dauntless/lock/MainActivity$1;->this$0:Lbe/dauntless/lock/MainActivity;

    .line 26
    sget v0, Lbe/dauntless/lock/R$id;->inputText:I

    invoke-virtual {p1, v0}, Lbe/dauntless/lock/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 28
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbe/dauntless/lock/MainActivity$1;->this$0:Lbe/dauntless/lock/MainActivity;

    invoke-virtual {v1}, Lbe/dauntless/lock/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbe/dauntless/lock/R$string;->app_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/dauntless/lock/MainActivity$1;->this$0:Lbe/dauntless/lock/MainActivity;

    .line 29
    invoke-virtual {v0}, Lbe/dauntless/lock/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbe/dauntless/lock/R$array;->flags:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x7

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "Wrong flag :("

    :goto_0
    iget-object p0, p0, Lbe/dauntless/lock/MainActivity$1;->this$0:Lbe/dauntless/lock/MainActivity;

    const/4 v0, 0x1

    .line 33
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
