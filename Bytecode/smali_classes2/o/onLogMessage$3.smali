.class final Lo/onLogMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMinKey$asInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onLogMessage;->onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getMinKey$onTransact;

.field private synthetic onPostMessage:Lo/onLogMessage;


# direct methods
.method constructor <init>(Lo/onLogMessage;Lo/getMinKey$onTransact;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/onLogMessage$3;->onPostMessage:Lo/onLogMessage;

    iput-object p2, p0, Lo/onLogMessage$3;->onNavigationEvent:Lo/getMinKey$onTransact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/openDatabase;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/onLogMessage$3;->onPostMessage:Lo/onLogMessage;

    iget-object v1, p0, Lo/onLogMessage$3;->onNavigationEvent:Lo/getMinKey$onTransact;

    invoke-static {v0, v1, p1}, Lo/onLogMessage;->onMessageChannelReady(Lo/onLogMessage;Lo/getMinKey$onTransact;Lo/openDatabase;)V

    return-void
.end method
