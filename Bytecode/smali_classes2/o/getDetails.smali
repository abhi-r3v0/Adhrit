.class final Lo/getDetails;
.super Lo/SuggestedAmount;

# interfaces
.implements Lo/setExternalTextView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SuggestedAmount<",
        "TT;>;",
        "Lo/setExternalTextView<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/SuggestedAmount;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/CashBackDetails;)V
    .locals 0

    invoke-direct {p0}, Lo/getDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
