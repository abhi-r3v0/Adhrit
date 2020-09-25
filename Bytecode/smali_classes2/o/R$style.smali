.class final synthetic Lo/R$style;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/R$string;

.field private final onMessageChannelReady:Lo/aY;


# direct methods
.method constructor <init>(Lo/R$string;Lo/aY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/R$style;->ICustomTabsCallback:Lo/R$string;

    iput-object p2, p0, Lo/R$style;->onMessageChannelReady:Lo/aY;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/R$style;->ICustomTabsCallback:Lo/R$string;

    iget-object v1, p0, Lo/R$style;->onMessageChannelReady:Lo/aY;

    invoke-virtual {v0, v1}, Lo/R$string;->extraCallback(Lo/aY;)V

    return-void
.end method
