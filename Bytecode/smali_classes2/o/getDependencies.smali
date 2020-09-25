.class public final Lo/getDependencies;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 1000
    new-instance v0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    invoke-direct {v0}, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;-><init>()V

    return-object v0
.end method
