.class final Lo/cancelSentTransactions$5;
.super Lo/beginTransaction$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions;->onPostMessage(I)Lo/cancelSentTransactions$validateRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/beginTransaction;


# direct methods
.method constructor <init>(Lo/beginTransaction;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lo/cancelSentTransactions$5;->extraCallback:Lo/beginTransaction;

    invoke-direct {p0}, Lo/beginTransaction$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/beginTransaction$onMessageChannelReady;)Lo/beginTransaction;
    .locals 0

    .line 205
    iget-object p1, p0, Lo/cancelSentTransactions$5;->extraCallback:Lo/beginTransaction;

    return-object p1
.end method
