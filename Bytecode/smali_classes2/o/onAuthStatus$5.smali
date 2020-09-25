.class final Lo/onAuthStatus$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMinKey$asInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAuthStatus;->onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onAuthStatus;

.field private synthetic onNavigationEvent:Lo/getMinKey$onTransact;


# direct methods
.method constructor <init>(Lo/onAuthStatus;Lo/getMinKey$onTransact;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/onAuthStatus$5;->onMessageChannelReady:Lo/onAuthStatus;

    iput-object p2, p0, Lo/onAuthStatus$5;->onNavigationEvent:Lo/getMinKey$onTransact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/openDatabase;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/onAuthStatus$5;->onMessageChannelReady:Lo/onAuthStatus;

    iget-object v1, p0, Lo/onAuthStatus$5;->onNavigationEvent:Lo/getMinKey$onTransact;

    invoke-static {v0, v1, p1}, Lo/onAuthStatus;->onNavigationEvent(Lo/onAuthStatus;Lo/getMinKey$onTransact;Lo/openDatabase;)V

    return-void
.end method
