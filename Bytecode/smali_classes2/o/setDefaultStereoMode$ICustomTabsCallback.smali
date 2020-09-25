.class abstract Lo/setDefaultStereoMode$ICustomTabsCallback;
.super Lo/setStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDefaultStereoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setStyle<",
        "Lo/setEndIconTintMode$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field protected onMessageChannelReady:Lo/setAllowMultipleOverrides;


# direct methods
.method public constructor <init>(Lo/getPaymentMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/setStyle;-><init>(Lo/getPaymentMode;)V

    new-instance p1, Lo/setSingleTapListener;

    invoke-direct {p1, p0}, Lo/setSingleTapListener;-><init>(Lo/setDefaultStereoMode$ICustomTabsCallback;)V

    iput-object p1, p0, Lo/setDefaultStereoMode$ICustomTabsCallback;->onMessageChannelReady:Lo/setAllowMultipleOverrides;

    return-void
.end method


# virtual methods
.method public synthetic onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;
    .locals 2

    new-instance v0, Lo/setDefaultStereoMode$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/setDefaultStereoMode$onPostMessage;-><init>(Lcom/google/android/gms/common/api/Status;Lo/setPasswordVisibilityToggleDrawable;)V

    return-object v0
.end method
