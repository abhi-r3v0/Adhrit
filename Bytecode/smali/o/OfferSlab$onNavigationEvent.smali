.class final Lo/OfferSlab$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;
.implements Lo/OrderStatusData$ICustomTabsCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OfferSlab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/OfferSlab;


# direct methods
.method private constructor <init>(Lo/OfferSlab;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/OfferSlab;Lo/OfferSlab$5;)V
    .locals 0

    .line 1190
    invoke-direct {p0, p1}, Lo/OfferSlab$onNavigationEvent;-><init>(Lo/OfferSlab;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/OrderStatusData;JZ)V
    .locals 1

    .line 1210
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/OfferSlab;->ICustomTabsCallback(Lo/OfferSlab;Z)Z

    if-nez p4, :cond_0

    .line 1211
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onMessageChannelReady(Lo/OfferSlab;)Lo/allow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1212
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onMessageChannelReady(Lo/OfferSlab;)Lo/allow;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lo/OfferSlab;->extraCallback(Lo/OfferSlab;Lo/allow;J)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/OrderStatusData;J)V
    .locals 2

    .line 1195
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/OfferSlab;->ICustomTabsCallback(Lo/OfferSlab;Z)Z

    .line 1196
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onNavigationEvent(Lo/OfferSlab;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1197
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onNavigationEvent(Lo/OfferSlab;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v0}, Lo/OfferSlab;->extraCallback(Lo/OfferSlab;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->ICustomTabsCallback(Lo/OfferSlab;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1249
    iget-object v0, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v0}, Lo/OfferSlab;->onMessageChannelReady(Lo/OfferSlab;)Lo/allow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1253
    :cond_0
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->getInterfaceDescriptor(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1254
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1, v0}, Lo/OfferSlab;->onMessageChannelReady(Lo/OfferSlab;Lo/allow;)V

    return-void

    .line 1255
    :cond_1
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->warmup(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1256
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1, v0}, Lo/OfferSlab;->onPostMessage(Lo/OfferSlab;Lo/allow;)V

    return-void

    .line 1257
    :cond_2
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1258
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1, v0}, Lo/OfferSlab;->extraCallback(Lo/OfferSlab;Lo/allow;)V

    return-void

    .line 1259
    :cond_3
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->newSession(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1260
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1, v0}, Lo/OfferSlab;->ICustomTabsCallback(Lo/OfferSlab;Lo/allow;)V

    return-void

    .line 1261
    :cond_4
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->ICustomTabsService(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_7

    .line 1262
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 1263
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->mayLaunchUrl(Lo/OfferSlab;)Lo/onAccuracyChanged;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1264
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->mayLaunchUrl(Lo/OfferSlab;)Lo/onAccuracyChanged;

    move-result-object p1

    invoke-interface {p1}, Lo/onAccuracyChanged;->ICustomTabsCallback()V

    goto :goto_0

    .line 1266
    :cond_5
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 1267
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->postMessage(Lo/OfferSlab;)Lo/g;

    move-result-object p1

    invoke-interface {v0}, Lo/allow;->extraCommand()I

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p1, v0, v1, v3, v4}, Lo/g;->onMessageChannelReady(Lo/allow;IJ)Z

    .line 1269
    :cond_6
    :goto_0
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->postMessage(Lo/OfferSlab;)Lo/g;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lo/g;->onMessageChannelReady(Lo/allow;Z)Z

    return-void

    .line 1270
    :cond_7
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->updateVisuals(Lo/OfferSlab;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 1271
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->postMessage(Lo/OfferSlab;)Lo/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/g;->onMessageChannelReady(Lo/allow;Z)Z

    return-void

    .line 1272
    :cond_8
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->extraCommand(Lo/OfferSlab;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 1273
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->postMessage(Lo/OfferSlab;)Lo/g;

    move-result-object p1

    .line 1274
    invoke-interface {v0}, Lo/allow;->newSession()I

    move-result v1

    iget-object v2, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v2}, Lo/OfferSlab;->requestPostMessageChannel(Lo/OfferSlab;)I

    move-result v2

    invoke-static {v1, v2}, Lo/AuthRefreshResponse;->onPostMessage(II)I

    move-result v1

    .line 1273
    invoke-interface {p1, v0, v1}, Lo/g;->onMessageChannelReady(Lo/allow;I)Z

    return-void

    .line 1275
    :cond_9
    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->validateRelationship(Lo/OfferSlab;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 1276
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->postMessage(Lo/OfferSlab;)Lo/g;

    move-result-object p1

    invoke-interface {v0}, Lo/allow;->updateVisuals()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lo/g;->onPostMessage(Lo/allow;Z)Z

    :cond_a
    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    .line 1224
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->ICustomTabsCallback$Stub(Lo/OfferSlab;)V

    .line 1225
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->asBinder(Lo/OfferSlab;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    .line 1230
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->asInterface(Lo/OfferSlab;)V

    .line 1231
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->asBinder(Lo/OfferSlab;)V

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 0

    .line 1218
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onPostMessage(Lo/OfferSlab;)V

    .line 1219
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onRelationshipValidationResult(Lo/OfferSlab;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/OrderStatusData;J)V
    .locals 2

    .line 1203
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onNavigationEvent(Lo/OfferSlab;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1204
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onNavigationEvent(Lo/OfferSlab;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v0}, Lo/OfferSlab;->extraCallback(Lo/OfferSlab;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {v1}, Lo/OfferSlab;->ICustomTabsCallback(Lo/OfferSlab;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    .line 1236
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->asBinder(Lo/OfferSlab;)V

    .line 1237
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onTransact(Lo/OfferSlab;)V

    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 0

    .line 1243
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->asBinder(Lo/OfferSlab;)V

    .line 1244
    iget-object p1, p0, Lo/OfferSlab$onNavigationEvent;->extraCallback:Lo/OfferSlab;

    invoke-static {p1}, Lo/OfferSlab;->onTransact(Lo/OfferSlab;)V

    return-void
.end method
