.class public final Landroidx/core/util/SparseIntArrayKt$keyIterator$1;
.super Lkotlin/collections/IntIterator;
.source "SparseIntArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/SparseIntArrayKt;->keyIterator(Landroid/util/SparseIntArray;)Lkotlin/collections/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/core/util/SparseIntArrayKt$keyIterator$1",
        "Lkotlin/collections/IntIterator;",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "nextInt",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_keyIterator:Landroid/util/SparseIntArray;

.field private index:I


# direct methods
.method constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseIntArray;

    .line 81
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->index:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->index:I

    iget-object p0, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseIntArray;

    .line 83
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextInt()I
    .locals 3

    iget-object v0, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->$this_keyIterator:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->index:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Landroidx/core/util/SparseIntArrayKt$keyIterator$1;->index:I

    return-void
.end method
