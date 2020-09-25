.class final Lo/UpiBalanceResponse$extraCallback;
.super Lo/TransactionDetails;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/UpiBalanceResponse;


# direct methods
.method private constructor <init>(Lo/UpiBalanceResponse;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/UpiBalanceResponse$extraCallback;->extraCallback:Lo/UpiBalanceResponse;

    invoke-direct {p0}, Lo/TransactionDetails;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/UpiBalanceResponse;Lo/UpiBalanceResponse$2;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lo/UpiBalanceResponse$extraCallback;-><init>(Lo/UpiBalanceResponse;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 201
    iget-object v0, p0, Lo/UpiBalanceResponse$extraCallback;->extraCallback:Lo/UpiBalanceResponse;

    invoke-virtual {v0, p0}, Lo/UpiBalanceResponse;->extraCallback(Lo/TransactionDetails;)V

    return-void
.end method
