.class final Lo/CardValidationResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getText3<",
        "Lo/initiateUPI;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/CashBackDetailsJsonAdapter;


# direct methods
.method constructor <init>(Lo/getCashback_disabled;Lo/CashBackDetailsJsonAdapter;)V
    .locals 0

    iput-object p2, p0, Lo/CardValidationResponseJsonAdapter;->onPostMessage:Lo/CashBackDetailsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo/initiateUPI;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Lo/initiateUPI;->ICustomTabsCallback:[B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lo/CardValidationResponseJsonAdapter;->onPostMessage:Lo/CashBackDetailsJsonAdapter;

    invoke-interface {p1, v0}, Lo/CashBackDetailsJsonAdapter;->onPostMessage(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
