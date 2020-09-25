.class public interface abstract Lo/splitIntoFrames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/retry;


# static fields
.field public static final onPostMessage:Lo/splitIntoFrames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/setMaxDelay;

    invoke-direct {v0}, Lo/setMaxDelay;-><init>()V

    sput-object v0, Lo/splitIntoFrames;->onPostMessage:Lo/splitIntoFrames;

    return-void
.end method
