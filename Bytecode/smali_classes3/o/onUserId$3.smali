.class final Lo/onUserId$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onUserId;->purgeOutstandingWrites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/onUserId;


# direct methods
.method constructor <init>(Lo/onUserId;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/onUserId$3;->this$0:Lo/onUserId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 236
    iget-object v0, p0, Lo/onUserId$3;->this$0:Lo/onUserId;

    invoke-static {v0}, Lo/onUserId;->access$000(Lo/onUserId;)Lo/getCrashlyticsInstallId;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCrashlyticsInstallId;->purgeOutstandingWrites()V

    return-void
.end method
