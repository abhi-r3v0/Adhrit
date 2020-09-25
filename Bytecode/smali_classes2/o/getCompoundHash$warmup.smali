.class final Lo/getCompoundHash$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "warmup"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lo/getCompoundHash$warmup;->ICustomTabsCallback:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 422
    iget-object v0, p0, Lo/getCompoundHash$warmup;->ICustomTabsCallback:Lo/getCompoundHash;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;Lo/unionWith$extraCallback;)Lo/unionWith$extraCallback;

    .line 423
    iget-object v0, p0, Lo/getCompoundHash$warmup;->ICustomTabsCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->asInterface(Lo/getCompoundHash;)V

    return-void
.end method
