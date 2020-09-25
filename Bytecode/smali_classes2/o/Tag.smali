.class final Lo/Tag;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/applyTo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    check-cast p1, Lo/PlutusOrder;

    invoke-interface {p1}, Lo/PlutusOrder;->ICustomTabsCallback()V

    return-void
.end method
