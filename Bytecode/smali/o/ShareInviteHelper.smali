.class public final Lo/ShareInviteHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# instance fields
.field private final onNavigationEvent:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ShareInviteHelper;->onNavigationEvent:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/ShareInviteHelper;->onNavigationEvent:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    check-cast p1, Lo/setBaseURL;

    .line 1000
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->onPostMessage(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;Lo/setBaseURL;)V

    return-void
.end method
