.class public final Lo/EligibilityPayload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EligibilityPayload$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

.field private volatile extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/EligibilityPayload$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EligibilityPayload$onNavigationEvent<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/PaymentRequestJsonAdapter;

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Landroid/net/Uri;ILo/EligibilityPayload$onNavigationEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ResultJsonAdapter;",
            "Landroid/net/Uri;",
            "I",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "+TT;>;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Lo/PaymentRequestJsonAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lo/EligibilityPayload;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ILo/EligibilityPayload$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ILo/EligibilityPayload$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ResultJsonAdapter;",
            "Lo/PaymentRequestJsonAdapter;",
            "I",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "+TT;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lo/EligibilityPayloadJsonAdapter;

    invoke-direct {v0, p1}, Lo/EligibilityPayloadJsonAdapter;-><init>(Lo/ResultJsonAdapter;)V

    iput-object v0, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    .line 124
    iput-object p2, p0, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    .line 125
    iput p3, p0, Lo/EligibilityPayload;->onPostMessage:I

    .line 126
    iput-object p4, p0, Lo/EligibilityPayload;->onMessageChannelReady:Lo/EligibilityPayload$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/net/Uri;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->ICustomTabsCallback$Stub()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->ICustomTabsCallback()V

    .line 168
    new-instance v0, Lo/PaymentSlider;

    iget-object v1, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    iget-object v2, p0, Lo/EligibilityPayload;->onNavigationEvent:Lo/PaymentRequestJsonAdapter;

    invoke-direct {v0, v1, v2}, Lo/PaymentSlider;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;)V

    .line 170
    :try_start_0
    invoke-virtual {v0}, Lo/PaymentSlider;->extraCallback()V

    .line 171
    iget-object v1, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v1}, Lo/EligibilityPayloadJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 172
    iget-object v2, p0, Lo/EligibilityPayload;->onMessageChannelReady:Lo/EligibilityPayload$onNavigationEvent;

    invoke-interface {v2, v1, v0}, Lo/EligibilityPayload$onNavigationEvent;->onPostMessage(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo/EligibilityPayload;->extraCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 175
    throw v1
.end method

.method public final extraCallback()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->onRelationshipValidationResult()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 140
    iget-object v0, p0, Lo/EligibilityPayload;->ICustomTabsCallback:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/EligibilityPayload;->extraCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final onTransact()V
    .locals 0

    return-void
.end method
