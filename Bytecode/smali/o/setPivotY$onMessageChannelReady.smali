.class public final Lo/setPivotY$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPivotY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

.field private onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;-><init>(B)V

    iput-object v0, p0, Lo/setPivotY$onMessageChannelReady;->ICustomTabsCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    .line 175
    iput-object v0, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 180
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/setPivotY$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;
    .locals 2

    .line 2378
    new-instance v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;-><init>(B)V

    .line 2379
    iget-object v1, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    .line 1391
    iput-object p2, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 1392
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;I)Lo/setPivotY$onMessageChannelReady;
    .locals 2

    .line 246
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 6378
    new-instance v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;-><init>(B)V

    .line 6379
    iget-object v1, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    .line 5391
    iput-object p2, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 5392
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;
    .locals 2

    .line 210
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    .line 4378
    new-instance v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;-><init>(B)V

    .line 4379
    iget-object v1, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, p0, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    .line 3391
    iput-object p2, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 3392
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lo/setPivotY$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    iget-object v1, p0, Lo/setPivotY$onMessageChannelReady;->ICustomTabsCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    iget-object v1, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    .line 357
    iget-object v3, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    .line 365
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 367
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    :goto_1
    iget-object v1, v1, Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/setPivotY$onMessageChannelReady$ICustomTabsCallback;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
