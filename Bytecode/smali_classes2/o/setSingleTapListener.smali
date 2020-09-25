.class final Lo/setSingleTapListener;
.super Lo/setAllowAdaptiveSelections;


# instance fields
.field private final synthetic extraCallback:Lo/setDefaultStereoMode$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setDefaultStereoMode$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setSingleTapListener;->extraCallback:Lo/setDefaultStereoMode$ICustomTabsCallback;

    invoke-direct {p0}, Lo/setAllowAdaptiveSelections;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;Lo/setPasswordVisibilityToggleDrawable;)V
    .locals 2

    iget-object v0, p0, Lo/setSingleTapListener;->extraCallback:Lo/setDefaultStereoMode$ICustomTabsCallback;

    new-instance v1, Lo/setDefaultStereoMode$onPostMessage;

    invoke-direct {v1, p1, p2}, Lo/setDefaultStereoMode$onPostMessage;-><init>(Lcom/google/android/gms/common/api/Status;Lo/setPasswordVisibilityToggleDrawable;)V

    invoke-virtual {v0, v1}, Lo/setDefaultStereoMode$ICustomTabsCallback;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void
.end method
