.class final synthetic Lo/setDobGiven;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/getDobGiven;

.field private final onNavigationEvent:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/getDobGiven;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setDobGiven;->onMessageChannelReady:Lo/getDobGiven;

    iput-object p2, p0, Lo/setDobGiven;->onNavigationEvent:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/setDobGiven;->onMessageChannelReady:Lo/getDobGiven;

    iget-object v1, p0, Lo/setDobGiven;->onNavigationEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/getDobGiven;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method
