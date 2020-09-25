.class final Lo/hasValue$extraCallback$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasValue$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$1$5"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/hasValue$extraCallback;


# direct methods
.method constructor <init>(Lo/hasValue$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/hasValue$extraCallback$onRelationshipValidationResult;->extraCallback:Lo/hasValue$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/hasValue$extraCallback$onRelationshipValidationResult;->extraCallback:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->ICustomTabsCallback$Stub(Lo/hasValue;)V

    return-void
.end method
