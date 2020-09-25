.class final Lo/setCardBankLogo;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/setCardBackgroundView;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/Address;

.field private final synthetic onPostMessage:Lo/setCenterImage;


# direct methods
.method constructor <init>(Lo/setCenterImage;Lo/Address;)V
    .locals 0

    iput-object p1, p0, Lo/setCardBankLogo;->onPostMessage:Lo/setCenterImage;

    iput-object p2, p0, Lo/setCardBankLogo;->onNavigationEvent:Lo/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/setCardBackgroundView;

    iget-object v0, p0, Lo/setCardBankLogo;->onPostMessage:Lo/setCenterImage;

    iget-object v1, p0, Lo/setCardBankLogo;->onNavigationEvent:Lo/Address;

    invoke-virtual {v0, v1, p1}, Lo/setCenterImage;->onPostMessage(Lo/Address;Lo/setCardBackgroundView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/setCardBankLogo;->onPostMessage:Lo/setCenterImage;

    invoke-virtual {p1}, Lo/setCenterImage;->onNavigationEvent()V

    :cond_0
    return-void
.end method
