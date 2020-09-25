.class final Lo/setCloseIconSizeResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setChipIconSize;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Ljava/lang/Object;

.field private final synthetic onNavigationEvent:J

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconSizeResource;->ICustomTabsCallback:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCloseIconSizeResource;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/setCloseIconSizeResource;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lo/setCloseIconSizeResource;->onMessageChannelReady:Ljava/lang/Object;

    iput-wide p5, p0, Lo/setCloseIconSizeResource;->onNavigationEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2
    iget-object v0, p0, Lo/setCloseIconSizeResource;->ICustomTabsCallback:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setCloseIconSizeResource;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/setCloseIconSizeResource;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/setCloseIconSizeResource;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v4, p0, Lo/setCloseIconSizeResource;->onNavigationEvent:J

    invoke-virtual/range {v0 .. v5}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
