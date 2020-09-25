.class final Lo/setAdvertiserView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isRestrictedUserProfile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isRestrictedUserProfile<",
        "Lo/setAdSize$ICustomTabsCallback$Stub$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(I)Lo/isPlayStorePossiblyUpdating;
    .locals 0

    .line 3
    invoke-static {p1}, Lo/setAdSize$ICustomTabsCallback$Stub$ICustomTabsCallback;->extraCallback(I)Lo/setAdSize$ICustomTabsCallback$Stub$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method
