.class final Lo/s$d$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCardExpiry;
.implements Lo/w;
.implements Lo/SurchargeDetailsJsonAdapter;
.implements Lo/UPIJSInterface$1;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lo/u$onNavigationEvent;
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/s$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/s$d;


# direct methods
.method private constructor <init>(Lo/s$d;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/s$d;Lo/s$d$2;)V
    .locals 0

    .line 1251
    invoke-direct {p0, p1}, Lo/s$d$onPostMessage;-><init>(Lo/s$d;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 1345
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onMessageChannelReady(Lo/s$d;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->ICustomTabsCallback(Lo/s$d;I)I

    .line 1349
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->asBinder(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w$e;

    .line 1352
    iget-object v2, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v2}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1353
    invoke-interface {v1, p1}, Lo/w$e;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1356
    :cond_2
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w;

    .line 1357
    invoke-interface {v1, p1}, Lo/w;->ICustomTabsCallback(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getCampaign;)V
    .locals 2

    .line 1326
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1327
    invoke-interface {v1, p1}, Lo/getCardExpiry;->ICustomTabsCallback(Lo/getCampaign;)V

    goto :goto_0

    .line 1329
    :cond_0
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Lo/p$a;)Lo/p$a;

    .line 1330
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, v0}, Lo/s$d;->extraCallback(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(F)V
    .locals 0

    .line 1462
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1}, Lo/s$d;->onTransact(Lo/s$d;)V

    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 2

    .line 1290
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1291
    invoke-interface {v1, p1, p2, p3}, Lo/getCardExpiry;->extraCallback(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;JJ)V
    .locals 8

    .line 1364
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/w;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1365
    invoke-interface/range {v2 .. v7}, Lo/w;->extraCallback(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->onNavigationEvent(Lo/s$d;Ljava/util/List;)Ljava/util/List;

    .line 1401
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->asInterface(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SurchargeDetailsJsonAdapter;

    .line 1402
    invoke-interface {v1, p1}, Lo/SurchargeDetailsJsonAdapter;->extraCallback(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/callAPI;)V
    .locals 2

    .line 1410
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->ICustomTabsCallback$Stub(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UPIJSInterface$1;

    .line 1411
    invoke-interface {v1, p1}, Lo/UPIJSInterface$1;->extraCallback(Lo/callAPI;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/p$a;)V
    .locals 2

    .line 1282
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Lo/p$a;)Lo/p$a;

    .line 1283
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1284
    invoke-interface {v1, p1}, Lo/getCardExpiry;->extraCallback(Lo/p$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 2

    .line 1474
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onRelationshipValidationResult(Lo/s$d;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1475
    iget-object v1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v1}, Lo/s$d;->getInterfaceDescriptor(Lo/s$d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1}, Lo/s$d;->onRelationshipValidationResult(Lo/s$d;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->onNavigationEvent(I)V

    .line 1477
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/s$d;->extraCallback(Lo/s$d;Z)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1478
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1}, Lo/s$d;->getInterfaceDescriptor(Lo/s$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1479
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1}, Lo/s$d;->onRelationshipValidationResult(Lo/s$d;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->onMessageChannelReady(I)V

    .line 1480
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, v0}, Lo/s$d;->extraCallback(Lo/s$d;Z)Z

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(IJJ)V
    .locals 8

    .line 1381
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/w;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1382
    invoke-interface/range {v2 .. v7}, Lo/w;->onMessageChannelReady(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/Surface;)V
    .locals 2

    .line 1314
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onNavigationEvent(Lo/s$d;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1315
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->ICustomTabsCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/component7;

    .line 1316
    invoke-interface {v1}, Lo/component7;->onMessageChannelReady()V

    goto :goto_0

    .line 1319
    :cond_0
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1320
    invoke-interface {v1, p1}, Lo/getCardExpiry;->onMessageChannelReady(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;JJ)V
    .locals 8

    .line 1274
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/getCardExpiry;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1275
    invoke-interface/range {v2 .. v7}, Lo/getCardExpiry;->onMessageChannelReady(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/getCampaign;)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w;

    .line 1389
    invoke-interface {v1, p1}, Lo/w;->onMessageChannelReady(Lo/getCampaign;)V

    goto :goto_0

    .line 1391
    :cond_0
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/s$d;->extraCallback(Lo/s$d;Lo/p$a;)Lo/p$a;

    .line 1392
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, v0}, Lo/s$d;->onPostMessage(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;

    .line 1393
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/s$d;->ICustomTabsCallback(Lo/s$d;I)I

    return-void
.end method

.method public final onMessageChannelReady(Lo/p$a;)V
    .locals 2

    .line 1372
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->extraCallback(Lo/s$d;Lo/p$a;)Lo/p$a;

    .line 1373
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w;

    .line 1374
    invoke-interface {v1, p1}, Lo/w;->onMessageChannelReady(Lo/p$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 1467
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-virtual {v0}, Lo/s$d;->ICustomTabsService()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lo/s$d;->onNavigationEvent(Lo/s$d;ZI)V

    return-void
.end method

.method public final onNavigationEvent(IIIF)V
    .locals 3

    .line 1298
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->ICustomTabsCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/component7;

    .line 1301
    iget-object v2, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v2}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1302
    invoke-interface {v1, p1, p2, p3, p4}, Lo/component7;->onNavigationEvent(IIIF)V

    goto :goto_0

    .line 1306
    :cond_1
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1307
    invoke-interface {v1, p1, p2, p3, p4}, Lo/getCardExpiry;->onNavigationEvent(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/getCampaign;)V
    .locals 2

    .line 1265
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->extraCallback(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;

    .line 1266
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->onPostMessage(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getCardExpiry;

    .line 1267
    invoke-interface {v1, p1}, Lo/getCardExpiry;->onNavigationEvent(Lo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/getCampaign;)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0, p1}, Lo/s$d;->onPostMessage(Lo/s$d;Lo/getCampaign;)Lo/getCampaign;

    .line 1338
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {v0}, Lo/s$d;->extraCallback(Lo/s$d;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/w;

    .line 1339
    invoke-interface {v1, p1}, Lo/w;->onPostMessage(Lo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1437
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Landroid/view/Surface;Z)V

    .line 1438
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, p2, p3}, Lo/s$d;->onPostMessage(Lo/s$d;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1448
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Landroid/view/Surface;Z)V

    .line 1449
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lo/s$d;->onPostMessage(Lo/s$d;II)V

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1443
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, p2, p3}, Lo/s$d;->onPostMessage(Lo/s$d;II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1424
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, p3, p4}, Lo/s$d;->onPostMessage(Lo/s$d;II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1419
    iget-object v0, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1429
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo/s$d;->onMessageChannelReady(Lo/s$d;Landroid/view/Surface;Z)V

    .line 1430
    iget-object p1, p0, Lo/s$d$onPostMessage;->onMessageChannelReady:Lo/s$d;

    invoke-static {p1, v0, v0}, Lo/s$d;->onPostMessage(Lo/s$d;II)V

    return-void
.end method
