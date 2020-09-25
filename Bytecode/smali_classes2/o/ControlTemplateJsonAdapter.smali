.class final synthetic Lo/ControlTemplateJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DataList;


# instance fields
.field private final extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ControlTemplateJsonAdapter;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/util/JsonWriter;)V
    .locals 1

    iget-object v0, p0, Lo/ControlTemplateJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/getCurrencyType;->ICustomTabsCallback(Ljava/lang/String;Landroid/util/JsonWriter;)V

    return-void
.end method
