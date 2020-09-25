.class public interface abstract Lo/addProperty;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:Lo/addProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/addProperty$2;

    invoke-direct {v0}, Lo/addProperty$2;-><init>()V

    sput-object v0, Lo/addProperty;->onMessageChannelReady:Lo/addProperty;

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/convertBoolean;",
            ">;"
        }
    .end annotation
.end method
