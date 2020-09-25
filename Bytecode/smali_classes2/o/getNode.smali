.class public interface abstract Lo/getNode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/getNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lo/getNode$2;

    invoke-direct {v0}, Lo/getNode$2;-><init>()V

    sput-object v0, Lo/getNode;->extraCallback:Lo/getNode;

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(Lo/fullLimitUpdateChild;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
