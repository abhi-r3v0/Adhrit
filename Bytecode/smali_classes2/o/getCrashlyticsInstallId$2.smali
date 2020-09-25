.class Lo/getCrashlyticsInstallId$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCrashlyticsInstallId;-><init>(Lo/getOsDisplayVersionString;Lo/getNamedThreadFactory;Lo/onUserId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/getCrashlyticsInstallId$2;->this$0:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/getCrashlyticsInstallId$2;->this$0:Lo/getCrashlyticsInstallId;

    invoke-static {v0}, Lo/getCrashlyticsInstallId;->access$000(Lo/getCrashlyticsInstallId;)V

    return-void
.end method
