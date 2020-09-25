.class final Lo/bT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cf;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/bL;


# direct methods
.method constructor <init>(Lo/bL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bT;->onMessageChannelReady:Lo/bL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Lo/cb;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 3
    iget-object v0, p0, Lo/bT;->onMessageChannelReady:Lo/bL;

    invoke-virtual {v0, p2}, Lo/bL;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/bN;

    move-result-object v0

    .line 4
    new-instance v1, Lo/cd;

    invoke-direct {v1, p0, p1, p2, v0}, Lo/cd;-><init>(Lo/bT;Lo/cb;Ljava/lang/CharSequence;Lo/bN;)V

    return-object v1
.end method
