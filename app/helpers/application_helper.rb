module ApplicationHelper
  def tl_icon
    tag.span class: "absolute flex items-center justify-center w-6 h-6 bg-blue-100 rounded-full -left-3 ring-8 ring-white dark:bg-blue-900" do
      tag.svg class: "w-2.5 h-2.5 text-blue-800 dark:text-blue-300", 'aria-hidden': "true", xmlns: "http://www.w3.org/2000/svg", fill: "currentColor", viewBox: "0 0 20 20" do
        tag.path d: "M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"
      end
    end
  end

  def tl_title(str, latest: false)
    tag.h3 class: "flex items-center mb-1 text-lg font-semibold text-gray-900 " do 
      str
    end
  end

  def tl_date(str)
    tag.time class: "block mb-2 text-sm font-normal leading-none text-gray-400 dark:text-gray-500" do
      str
    end
  end

  def tl_text(&block)
    tag.p class: "mb-4 text-base font-normal text-gray-500 dark:text-gray-400" do
      block.call
    end
  end

  def latest_badge
    tag.span class: "bg-blue-100 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-900 dark:text-blue-300 ml-3" do
      Latest
    end
  end
end
