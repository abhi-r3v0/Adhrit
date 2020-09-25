.class final Lo/setDefaultStereoMode$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setEndIconTintMode$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDefaultStereoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final extraCallback:Lo/setPasswordVisibilityToggleDrawable;

.field private final onPostMessage:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lo/setPasswordVisibilityToggleDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setDefaultStereoMode$onPostMessage;->onPostMessage:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lo/setDefaultStereoMode$onPostMessage;->extraCallback:Lo/setPasswordVisibilityToggleDrawable;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lo/setDefaultStereoMode$onPostMessage;->onPostMessage:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setDefaultStereoMode$onPostMessage;->extraCallback:Lo/setPasswordVisibilityToggleDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lo/setPasswordVisibilityToggleDrawable;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
