.class public final Lo/checkSpanForGap$onNavigationEvent$extraCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/checkSpanForGap$onNavigationEvent;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/utils/list/AsyncListDiffer$submitList$1$result$1",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;",
        "areContentsTheSame",
        "",
        "oldItemPosition",
        "",
        "newItemPosition",
        "areItemsTheSame",
        "getChangePayload",
        "",
        "getNewListSize",
        "getOldListSize",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/checkSpanForGap$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/checkSpanForGap$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 246
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    .line 2128
    iget-object v0, v0, Lo/checkSpanForGap;->asInterface:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 246
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 255
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 237
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    .line 1128
    iget-object v0, v0, Lo/checkSpanForGap;->asInterface:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 237
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 262
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->extraCallback:Lo/checkSpanForGap;

    .line 3128
    iget-object v0, v0, Lo/checkSpanForGap;->asInterface:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 262
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final getNewListSize()I
    .locals 1

    .line 230
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOldListSize()I
    .locals 1

    .line 226
    iget-object v0, p0, Lo/checkSpanForGap$onNavigationEvent$extraCallback;->onPostMessage:Lo/checkSpanForGap$onNavigationEvent;

    iget-object v0, v0, Lo/checkSpanForGap$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
