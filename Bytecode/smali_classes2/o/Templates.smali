.class final Lo/Templates;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/StatementDetailJsonAdapter;


# direct methods
.method constructor <init>(Lo/StatementDetailJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/Templates;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/Templates;->onMessageChannelReady:Lo/StatementDetailJsonAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/StatementDetailJsonAdapter;->onMessageChannelReady(Lo/StatementDetailJsonAdapter;I)V

    return-void
.end method
