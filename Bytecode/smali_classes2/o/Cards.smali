.class public Lo/Cards;
.super Lo/getPaymentMode;
.source ""


# instance fields
.field private final extraCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getPaymentMode;-><init>()V

    .line 2
    iput-object p1, p0, Lo/Cards;->extraCallback:Ljava/lang/String;

    return-void
.end method
