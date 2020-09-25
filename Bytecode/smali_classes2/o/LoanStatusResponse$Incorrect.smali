.class public Lo/LoanStatusResponse$Incorrect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/LoanSummary$Details;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    move-result-object v0

    sput-object v0, Lo/LoanStatusResponse$Incorrect;->extraCallback:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
