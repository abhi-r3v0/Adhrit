.class final Lo/abortTransactionsAtNode$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abortTransactionsAtNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/abortTransactionsAtNode$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/abortTransactionsAtNode$onPostMessage;

    invoke-direct {v0}, Lo/abortTransactionsAtNode$onPostMessage;-><init>()V

    sput-object v0, Lo/abortTransactionsAtNode$onPostMessage;->onNavigationEvent:Lo/abortTransactionsAtNode$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic onMessageChannelReady()Lo/abortTransactionsAtNode$onPostMessage;
    .locals 1

    .line 39
    sget-object v0, Lo/abortTransactionsAtNode$onPostMessage;->onNavigationEvent:Lo/abortTransactionsAtNode$onPostMessage;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 43
    sget-object v0, Lo/abortTransactionsAtNode$onPostMessage;->onNavigationEvent:Lo/abortTransactionsAtNode$onPostMessage;

    return-object v0
.end method
