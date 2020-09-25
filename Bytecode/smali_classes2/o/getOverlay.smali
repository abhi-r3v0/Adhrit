.class final synthetic Lo/getOverlay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/getTemplateIdentifierName;


# direct methods
.method constructor <init>(Lo/getTemplateIdentifierName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getOverlay;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/getOverlay;->onMessageChannelReady:Lo/getTemplateIdentifierName;

    invoke-virtual {v0}, Lo/getTemplateIdentifierName;->onNavigationEvent()V

    return-void
.end method
