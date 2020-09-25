.class final Lo/getCompoundHash$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->onTransact()Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lo/getCompoundHash$extraCallback;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 763
    iget-object v0, p0, Lo/getCompoundHash$extraCallback;->onMessageChannelReady:Lo/getCompoundHash;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/getCompoundHash;->onNavigationEvent(Lo/getCompoundHash;Z)V

    return-void
.end method
