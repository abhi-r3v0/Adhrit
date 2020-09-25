.class public final Lo/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;
.super Lo/DigestFragment$performCtaClick$$inlined$let$lambda$3;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/DigestFragment$performCtaClick$$inlined$let$lambda$3;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/DigestFragment$performCtaClick$$inlined$let$lambda$3;->onMessageChannelReady(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
