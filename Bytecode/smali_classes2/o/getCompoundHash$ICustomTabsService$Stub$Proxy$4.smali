.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMinKey$asInterface;


# direct methods
.method constructor <init>(Lo/getMinKey$asInterface;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$4;->ICustomTabsCallback:Lo/getMinKey$asInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1531
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$4;->ICustomTabsCallback:Lo/getMinKey$asInterface;

    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    invoke-static {v1}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/getMinKey$asInterface;->onNavigationEvent(Lo/openDatabase;)V

    return-void
.end method
