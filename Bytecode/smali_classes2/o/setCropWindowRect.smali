.class final Lo/setCropWindowRect;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setBounds;

.field private final synthetic onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lo/setBounds;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lo/setCropWindowRect;->extraCallback:Lo/setBounds;

    iput-object p2, p0, Lo/setCropWindowRect;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/setCropWindowRect;->extraCallback:Lo/setBounds;

    invoke-static {v0}, Lo/setBounds;->onPostMessage(Lo/setBounds;)Lo/setOnCropWindowChangedListener;

    move-result-object v0

    iget-object v1, p0, Lo/setCropWindowRect;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-interface {v0, v1}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
