.class public final Lo/getNextQueryTag$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/isCacheableHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getNextQueryTag;->ICustomTabsCallback()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/forEachTree;",
        ">;",
        "Lo/isCacheableHost;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lkotlin/ranges/IntRange;",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private synthetic ICustomTabsCallback$Stub:Lo/getNextQueryTag;

.field private extraCallback:I

.field private onMessageChannelReady:Lo/forEachTree;

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/getNextQueryTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1082
    iput-object p1, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1083
    iput v0, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    .line 12075
    iget v0, p1, Lo/getNextQueryTag;->onPostMessage:I

    .line 13075
    iget-object p1, p1, Lo/getNextQueryTag;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 1084
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lo/viewForQuery;->extraCallback(III)I

    move-result p1

    iput p1, p0, Lo/getNextQueryTag$extraCallback;->onNavigationEvent:I

    .line 1085
    iput p1, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 7

    .line 1090
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1091
    iput v1, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    return-void

    .line 1094
    :cond_0
    iget-object v0, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 2075
    iget v0, v0, Lo/getNextQueryTag;->extraCallback:I

    const/4 v2, -0x1

    const-string v3, "$this$lastIndex"

    const/4 v4, 0x1

    if-lez v0, :cond_1

    .line 1094
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->onPostMessage:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/getNextQueryTag$extraCallback;->onPostMessage:I

    iget-object v5, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 3075
    iget v5, v5, Lo/getNextQueryTag;->extraCallback:I

    if-ge v0, v5, :cond_2

    .line 1094
    :cond_1
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    iget-object v5, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 4075
    iget-object v5, v5, Lo/getNextQueryTag;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 1094
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    .line 1095
    :cond_2
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->onNavigationEvent:I

    new-instance v1, Lo/forEachTree;

    iget-object v5, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 5075
    iget-object v5, v5, Lo/getNextQueryTag;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 1095
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5317
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 1095
    invoke-direct {v1, v0, v3}, Lo/forEachTree;-><init>(II)V

    iput-object v1, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    .line 1096
    iput v2, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 1098
    :cond_3
    iget-object v0, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 6075
    iget-object v0, v0, Lo/getNextQueryTag;->onMessageChannelReady:Lo/nextTransactionOrder;

    .line 1098
    iget-object v5, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 7075
    iget-object v5, v5, Lo/getNextQueryTag;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 1098
    iget v6, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addWrite;

    if-nez v0, :cond_4

    .line 1100
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->onNavigationEvent:I

    new-instance v1, Lo/forEachTree;

    iget-object v5, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback$Stub:Lo/getNextQueryTag;

    .line 8075
    iget-object v5, v5, Lo/getNextQueryTag;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 1100
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8317
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 1100
    invoke-direct {v1, v0, v3}, Lo/forEachTree;-><init>(II)V

    iput-object v1, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    .line 1101
    iput v2, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    goto :goto_1

    .line 9000
    :cond_4
    iget-object v2, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1103
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 10000
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1103
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1104
    iget v3, p0, Lo/getNextQueryTag$extraCallback;->onNavigationEvent:I

    const/high16 v5, -0x80000000

    if-gt v2, v5, :cond_5

    .line 10768
    sget-object v3, Lo/forEachTree;->extraCallback:Lo/forEachTree$ICustomTabsCallback;

    .line 11058
    invoke-static {}, Lo/forEachTree;->onPostMessage()Lo/forEachTree;

    move-result-object v3

    goto :goto_0

    .line 10769
    :cond_5
    new-instance v5, Lo/forEachTree;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v5, v3, v6}, Lo/forEachTree;-><init>(II)V

    move-object v3, v5

    .line 1104
    :goto_0
    iput-object v3, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    add-int/2addr v2, v0

    .line 1105
    iput v2, p0, Lo/getNextQueryTag$extraCallback;->onNavigationEvent:I

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v2, v1

    .line 1106
    iput v2, p0, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback:I

    .line 1109
    :goto_1
    iput v4, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1126
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1127
    invoke-direct {p0}, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback()V

    .line 1128
    :cond_0
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 11114
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11115
    invoke-direct {p0}, Lo/getNextQueryTag$extraCallback;->ICustomTabsCallback()V

    .line 11116
    :cond_0
    iget v0, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    if-eqz v0, :cond_2

    .line 11118
    iget-object v0, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 11120
    iput-object v2, p0, Lo/getNextQueryTag$extraCallback;->onMessageChannelReady:Lo/forEachTree;

    .line 11121
    iput v1, p0, Lo/getNextQueryTag$extraCallback;->extraCallback:I

    return-object v0

    .line 11118
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11117
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
