.class Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application;->access$300(Lo/CrashlyticsReport$Session$Event$Application;)V

    return-void
.end method
