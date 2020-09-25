.class public interface abstract Lo/updateEventSnap;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/updateEventSnap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lo/updateEventSnap$4;

    invoke-direct {v0}, Lo/updateEventSnap$4;-><init>()V

    sput-object v0, Lo/updateEventSnap;->ICustomTabsCallback:Lo/updateEventSnap;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/fullLimitUpdateChild;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
