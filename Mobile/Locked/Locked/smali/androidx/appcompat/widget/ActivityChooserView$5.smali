.class Landroidx/appcompat/widget/ActivityChooserView$5;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$5;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 285
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 288
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$5;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 289
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method