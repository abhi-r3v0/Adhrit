.class final Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady(Lo/emptyMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/emptyMap;

.field private synthetic onMessageChannelReady:Lo/getCompoundHash$requestPostMessageChannel;


# direct methods
.method constructor <init>(Lo/getCompoundHash$requestPostMessageChannel;Lo/emptyMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1447
    iput-object p1, p0, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/getCompoundHash$requestPostMessageChannel;

    iput-object p2, p0, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1450
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;->onMessageChannelReady:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v1, p0, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback:Lo/emptyMap;

    invoke-static {v0, v1}, Lo/getCompoundHash$requestPostMessageChannel;->extraCallback(Lo/getCompoundHash$requestPostMessageChannel;Lo/emptyMap;)V

    return-void
.end method
