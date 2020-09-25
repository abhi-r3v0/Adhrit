.class public interface abstract Lo/setDropdownParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/setDropdownParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lo/setNavigationMode$extraCallback;

    invoke-direct {v0}, Lo/setNavigationMode$extraCallback;-><init>()V

    .line 1213
    new-instance v1, Lo/setNavigationMode;

    iget-object v0, v0, Lo/setNavigationMode$extraCallback;->extraCallback:Ljava/util/Map;

    invoke-direct {v1, v0}, Lo/setNavigationMode;-><init>(Ljava/util/Map;)V

    .line 31
    sput-object v1, Lo/setDropdownParams;->extraCallback:Lo/setDropdownParams;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
