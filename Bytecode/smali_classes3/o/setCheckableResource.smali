.class final Lo/setCheckableResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic ICustomTabsCallback$Stub:Lo/setChipIconSize;

.field private final synthetic asInterface:Z

.field private final synthetic extraCallback:Landroid/os/Bundle;

.field private final synthetic onMessageChannelReady:Z

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:J

.field private final synthetic onRelationshipValidationResult:Ljava/lang/String;

.field private final synthetic onTransact:Z


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCheckableResource;->ICustomTabsCallback$Stub:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCheckableResource;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/setCheckableResource;->ICustomTabsCallback:Ljava/lang/String;

    iput-wide p4, p0, Lo/setCheckableResource;->onPostMessage:J

    iput-object p6, p0, Lo/setCheckableResource;->extraCallback:Landroid/os/Bundle;

    iput-boolean p7, p0, Lo/setCheckableResource;->onMessageChannelReady:Z

    iput-boolean p8, p0, Lo/setCheckableResource;->onTransact:Z

    iput-boolean p9, p0, Lo/setCheckableResource;->asInterface:Z

    iput-object p10, p0, Lo/setCheckableResource;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 2
    iget-object v0, p0, Lo/setCheckableResource;->ICustomTabsCallback$Stub:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setCheckableResource;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p0, Lo/setCheckableResource;->ICustomTabsCallback:Ljava/lang/String;

    iget-wide v3, p0, Lo/setCheckableResource;->onPostMessage:J

    iget-object v5, p0, Lo/setCheckableResource;->extraCallback:Landroid/os/Bundle;

    iget-boolean v6, p0, Lo/setCheckableResource;->onMessageChannelReady:Z

    iget-boolean v7, p0, Lo/setCheckableResource;->onTransact:Z

    iget-boolean v8, p0, Lo/setCheckableResource;->asInterface:Z

    iget-object v9, p0, Lo/setCheckableResource;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
