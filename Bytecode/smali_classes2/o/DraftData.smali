.class final Lo/DraftData;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LoanStatusResponse_DataJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/LoanStatusResponse_DataJsonAdapter<",
        "Lo/EmiCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;
    .locals 0

    invoke-static {p1}, Lo/EmiCard;->onPostMessage(I)Lo/EmiCard;

    move-result-object p1

    return-object p1
.end method
