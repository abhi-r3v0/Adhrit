.class final Lo/setMeasuredDimension$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMeasuredDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setMeasuredDimension;


# direct methods
.method constructor <init>(Lo/setMeasuredDimension;)V
    .locals 0

    iput-object p1, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    iget-object p1, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 2036
    iget-object p1, p1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 2070
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz p1, :cond_4

    .line 2073
    iget-boolean v0, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 3036
    iget-object v0, v0, Lo/setMeasuredDimension;->ICustomTabsCallback$Stub$Proxy:Lo/getSpanGroupIndex;

    .line 1106
    invoke-virtual {v0, p1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;)V

    goto :goto_0

    .line 3074
    :cond_0
    iget-boolean v0, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asBinder:Z

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 4036
    iget-object v0, v0, Lo/setMeasuredDimension;->ICustomTabsCallback$Stub$Proxy:Lo/getSpanGroupIndex;

    const-string v1, "bank_screen"

    .line 1108
    invoke-virtual {v0, v1}, Lo/getSpanGroupIndex;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 4074
    :cond_1
    :goto_0
    iget-boolean p1, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onTransact:Z

    if-eqz p1, :cond_4

    .line 1111
    iget-object p1, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 5036
    iget-object p1, p1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 1111
    iget-object v0, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 6036
    iget-object v0, v0, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 6070
    iget-object v0, v0, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 6074
    iget-object v0, v0, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7067
    :goto_1
    iput-object v0, p1, Lo/getSpanIndex;->validateRelationship:Ljava/lang/String;

    .line 1112
    iget-object p1, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 8036
    iget-object p1, p1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 8070
    iget-object p1, p1, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 8074
    iput-boolean v0, p1, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->asBinder:Z

    .line 1113
    :cond_3
    iget-object p1, p0, Lo/setMeasuredDimension$ICustomTabsCallback;->onNavigationEvent:Lo/setMeasuredDimension;

    .line 8129
    iget-object v0, p1, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 9040
    iget-object v0, v0, Lo/getSpanIndex;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 8129
    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8130
    iget-object p1, p1, Lo/setMeasuredDimension;->onPostMessage:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f08030d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :cond_4
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
