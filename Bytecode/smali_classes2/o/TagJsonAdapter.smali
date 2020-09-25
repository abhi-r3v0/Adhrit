.class final Lo/TagJsonAdapter;
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


# instance fields
.field private final synthetic extraCallback:Lo/applyTo;


# direct methods
.method constructor <init>(Lo/applyTo;)V
    .locals 0

    iput-object p1, p0, Lo/TagJsonAdapter;->extraCallback:Lo/applyTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/TagJsonAdapter;->extraCallback:Lo/applyTo;

    invoke-static {p1}, Lo/applyTo;->extraCallback(Lo/applyTo;)Lo/updateRangeInNode;

    move-result-object p1

    invoke-virtual {p1}, Lo/updateRangeInNode;->onNavigationEvent()V

    return-void
.end method
