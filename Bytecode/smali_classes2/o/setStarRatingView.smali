.class final Lo/setStarRatingView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isRestrictedUserProfile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isRestrictedUserProfile<",
        "Lo/setPriceView;",
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
    invoke-static {p1}, Lo/setPriceView;->ICustomTabsCallback(I)Lo/setPriceView;

    move-result-object p1

    return-object p1
.end method
