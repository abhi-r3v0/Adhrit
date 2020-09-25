.class final Landroidx/recyclerview/widget/DiffUtil$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 84
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;

    .line 1087
    iget v0, p1, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;->onNavigationEvent:I

    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1088
    iget p1, p1, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;->onPostMessage:I

    iget p2, p2, Landroidx/recyclerview/widget/DiffUtil$onNavigationEvent;->onPostMessage:I

    sub-int/2addr p1, p2

    return p1

    :cond_0
    return v0
.end method
